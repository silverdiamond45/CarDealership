﻿CREATE VIEW [rapOp].[vwZamowieniaZrealizowaneMaxTydzien]
AS
with cte as 
(SELECT DataZmiany, IdZamowienie, IdStatus
                                                    FROM            dbo.HistoriaZamowienU
                                                    GROUP BY IdZamowienie, IdStatus, DataZmiany
													HAVING         IdStatus = 4 union all
													select DataZmiany, IdZamowienie, IdStatus
                                                    FROM            dbo.HistoriaZamowienU
                                                    GROUP BY IdZamowienie, IdStatus, DataZmiany
													HAVING         IdStatus = 2
													)
SELECT        CONVERT(INT, CONVERT(DATETIME, tabZamkniete.DataZamknieciaZamowienia)) - 
			  CONVERT(INT, CONVERT(DATETIME, tabZlozone.DataZlozeniaZamowienia)) AS CzasRealizacji, tabZamkniete.IdZamowienie
FROM            (SELECT        DataZmiany AS DataZlozeniaZamowienia, IdZamowienie
                          FROM            cte
                          WHERE        (IdStatus = 2)) AS tabZlozone INNER JOIN
                              (SELECT        DataZmiany AS DataZamknieciaZamowienia, IdZamowienie
                               FROM            cte
                               WHERE   (IdStatus = 4)) AS tabZamkniete ON tabZlozone.IdZamowienie = tabZamkniete.IdZamowienie 
							   AND CONVERT(INT, CONVERT(DATETIME, tabZlozone.DataZlozeniaZamowienia)) + 7 >= CONVERT(INT, 
                         CONVERT(DATETIME, tabZamkniete.DataZamknieciaZamowienia))
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'rapOp', @level1type = N'VIEW', @level1name = N'vwZamowieniaZrealizowaneMaxTydzien';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[9] 2[32] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tabZlozone"
            Begin Extent = 
               Top = 1
               Left = 46
               Bottom = 98
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tabZamkniete"
            Begin Extent = 
               Top = 102
               Left = 38
               Bottom = 212
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'rapOp', @level1type = N'VIEW', @level1name = N'vwZamowieniaZrealizowaneMaxTydzien';
